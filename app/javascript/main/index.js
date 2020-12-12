import Rails from '@rails/ujs';
import CorrectSound from './correct.mp3';
import IncorrectSound from './incorrect.mp3';

const correctSfx = new Audio(CorrectSound);
const incorrectSfx = new Audio(IncorrectSound);

function playCorrect() {
  correctSfx.currentTime = 0.3;
  correctSfx.play();
}
function playIncorrect() {
  incorrectSfx.currentTime = 0.2;
  incorrectSfx.play();
}

function checkAnswer($event) {
  const correctId = Number($('#vocabulary').data('id'));
  const selectedId = Number($event.target.value);

  const correct = correctId === selectedId;

  $('#vocabulary').hide();
  $('.vocabulary-answer').show();

  $(`#answers > [value="${correctId}"]`).addClass('bg-success text-white').removeClass('text-body').blur();
  if (!correct) {
    $(`#answers > [value="${selectedId}"]`).addClass('bg-danger text-white').removeClass('text-body').blur();
    playIncorrect();
  }

  if (correct) {
    playCorrect();
    $('#vocab-area').addClass('bg-gradient-success').removeClass('bg-gradient-info');
  }

  const data = new URLSearchParams({
    vocabulary_id: correctId,
    selected_vocabulary_id: selectedId,
  }).toString();

  Rails.ajax({
    url: "/lesson",
    type: "post",
    data,
  });

  $("#answers > button").off('click', checkAnswer);
  $('#next-button').show();
  $('#finish-button').show();
}

window.addEventListener('load', () => {
  $("#answers > button").on('click', checkAnswer);
});
